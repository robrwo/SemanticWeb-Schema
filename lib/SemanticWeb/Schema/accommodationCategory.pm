use utf8;

package SemanticWeb::Schema::accommodationCategory;

# ABSTRACT: Category of an [[Accommodation]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accommodationCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Category of an L<SemanticWeb::Schema::Accommodation>, following real estate conventions, e.g. RESO (see L<PropertySubType|https://ddwiki.reso.org/display/DDW17/PropertySubType+Field>, and L<PropertyType|https://ddwiki.reso.org/display/DDW17/PropertyType+Field> fields  for suggested values).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
