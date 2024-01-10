use utf8;

package SemanticWeb::Schema::brand;

# ABSTRACT: The brand(s) associated with a product or service

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'brand';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The brand(s) associated with a product or service, or the brand(s)
maintained by an organization or business person.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
