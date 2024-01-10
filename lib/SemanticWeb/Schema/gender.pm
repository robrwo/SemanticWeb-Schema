use utf8;

package SemanticWeb::Schema::gender;

# ABSTRACT: Gender of something

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gender';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Gender of something, typically a L<SemanticWeb::Schema::Person>, but possibly also fictional characters, animals, etc. While http://schema.org/Male and http://schema.org/Female may be used, text strings are also acceptable for people who do not identify as a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender L<SemanticWeb::Schema::SportsTeam> can be indicated with a text value of "Mixed".



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
