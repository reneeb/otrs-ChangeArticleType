# --
# Kernel/Language/de_ChangeArticleType.pm - the German translation of ChangeArticleType
# Copyright (C) 2016 Perl-Services, http://www.perl-services.de
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_ChangeArticleType;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    # Custom/Kernel/Output/HTML/FilterElementPost/ChangeArticleType.pm
    $Lang->{'Change Article Type'} = 'Artikeltyp ändern';

    # Custom/Kernel/Output/HTML/Templates/Standard/AgentTicketChangeArticleType.tt
    $Lang->{'Set new article type'} = 'Neuen Artikeltypen setzen';
    $Lang->{'Cancel & close window'} = '';
    $Lang->{'Article Type'} = 'Artikeltyp';
    $Lang->{'Submit'} = 'Übermitteln';

    # Kernel/Config/Files/ChangeArticleType.xml
    $Lang->{'Adds a link to the article menu to change the article type.'} = '';
    $Lang->{'Frontend module registration for the agent interface.'} =
        'Frontend-Modulregistrierung im Agent-Interface.';
    $Lang->{'Change article type.'} = 'Artikeltyp ändern.';
    $Lang->{'Defines what article types can be changed.'} = '';

    return 1;
}

1;
