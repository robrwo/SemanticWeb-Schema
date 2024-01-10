use utf8;

package SemanticWeb::Schema::sameAs;

# ABSTRACT: URL of a reference Web page that unambiguously indicates the item's identity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sameAs';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

URL of a reference Web page that unambiguously indicates the item's
identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
official website.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
