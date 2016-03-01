# --
# Kernel/Modules/AgentTicketChangeArticleType.pm - common file for several modules
# Copyright (C) 2016 Perl-Services.de, http://perl-services.de
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AgentTicketChangeArticleType;
 
use strict;
use warnings;
 
our $ObjectManagerDisabled = 1;

sub new {
    my ( $Type, %Param ) = @_;
 
    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    return $Self;
}
 
sub Run {
    my ( $Self, %Param ) = @_;

    my $LayoutObject = $Kernel::OM->Get('Kernel::Output::HTML::Layout');
    my $ParamObject  = $Kernel::OM->Get('Kernel::System::Web::Request');
    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');
    my $DBObject     = $Kernel::OM->Get('Kernel::System::DB');

    my @Params = qw(ArticleTypeID ArticleID TicketID);
    my %GetParam;

    for my $Param ( @Params ) {
        $GetParam{$Param} = $ParamObject->GetParam( Param => $Param ) // '';
    }

    if ( $Self->{Subaction} eq 'ChangeType' && $GetParam{ArticleID} && $GetParam{ArticleTypeID} ) {
        my $SQL     = 'UPDATE article SET article_type_id = ? WHERE id = ?';
        my $Success = $DBObject->Do(
            SQL  => $SQL,
            Bind => [ \$GetParam{ArticleTypeID}, \$GetParam{ArticleID} ],
        );

        if ( $Success ) {
            $TicketObject->_TicketCacheClear( TicketID => $GetParam{TicketID} );

            return $LayoutObject->PopupClose(
                URL => 'Action=AgentTicketZoom&TicketID=' . $GetParam{TicketID},
            );
        }
    }

    $Param{ArticleTypeStrg} = $LayoutObject->BuildSelection(
        Name => 'ArticleTypeID',
        Data => {
            $TicketObject->ArticleTypeList(
                Result => 'HASH',
            ),
        },
        Translation  => 1,
        PossibleNone => 0,
    );

    my $Output = $LayoutObject->Header( Type => 'Small' );
    $Output .= $LayoutObject->Output(
        TemplateFile => 'AgentTicketChangeArticleType',
        Data         => {
            %Param,
            %GetParam,
        },
    );
    $Output .= $LayoutObject->Footer( Type => 'Small' );

    return $Output;
}
 
1;

