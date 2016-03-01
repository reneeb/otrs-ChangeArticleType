# --
# Kernel/Language/de_ChangeArticleType.pm - the german translation of ChangeArticleType
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

    $Lang->{"Set new article type"} = 'Neuen Artikeltypen setzen';
    $Lang->{"Change Article Type"}  = 'Artikeltyp ändern';

    return 1;
}

1;
