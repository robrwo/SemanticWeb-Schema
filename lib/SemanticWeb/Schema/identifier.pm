use utf8;

package SemanticWeb::Schema::identifier;

# ABSTRACT: The identifier property represents any kind of identifier for any kind of [[Thing]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'identifier';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The identifier property represents any kind of identifier for any kind of L<SemanticWeb::Schema::Thing>, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See L<background notes|/docs/datamodel.html#identifierBg> for more details.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
