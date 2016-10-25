# --
# Kernel/Language/hu_ChangeArticleType.pm - the Hungarian translation of ChangeArticleType
# Copyright (C) 2016 Perl-Services, http://www.perl-services.de
# Copyright (C) 2016 Balázs Úr, http://www.otrs-megoldasok.hu
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::hu_ChangeArticleType;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    # Custom/Kernel/Output/HTML/FilterElementPost/ChangeArticleType.pm
    $Lang->{'Change Article Type'} = 'Bejegyzéstípus megváltoztatása';

    # Custom/Kernel/Output/HTML/Templates/Standard/AgentTicketChangeArticleType.tt
    $Lang->{'Set new article type'} = 'Új bejegyzéstípus beállítása';
    $Lang->{'Cancel & close window'} = 'Megszakítás és az ablak bezárása';
    $Lang->{'Article Type'} = 'Bejegyzéstípus';
    $Lang->{'Submit'} = 'Elküldés';

    # Kernel/Config/Files/ChangeArticleType.xml
    $Lang->{'Adds a link to the article menu to change the article type.'} =
        'Egy hivatkozást ad hozzá a bejegyzésmenühöz a bejegyzéstípus megváltoztatásához.';
    $Lang->{'Frontend module registration for the agent interface.'} =
        'Előtétprogram-modul regisztráció az ügyintézői felülethez.';
    $Lang->{'Change article type.'} = 'Bejegyzéstípus megváltoztatása.';
    $Lang->{'Defines what article types can be changed.'} =
        'Meghatározza, hogy mely bejegyzéstípusok legyenek megváltoztathatók.';

    return 1;
}

1;
