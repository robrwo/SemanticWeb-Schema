use utf8;

package SemanticWeb::Schema::Newspaper;

# ABSTRACT: A publication containing information about varied topics that are pertinent to general information

use Moo;

extends qw/ SemanticWeb::Schema::Periodical /;


use MooX::JSON_LD 'Newspaper';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

A publication containing information about varied topics that are pertinent
to general information, a geographic area, or a specific subject matter
(i.e. business, culture, education). Often published daily.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Periodical>

=cut

1;
