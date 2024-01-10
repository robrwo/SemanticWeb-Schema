use utf8;

package SemanticWeb::Schema::productSupported;

# ABSTRACT: The product or service this support contact point is related to (such as product support for a particular product line)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'productSupported';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The product or service this support contact point is related to (such as
product support for a particular product line). This can be a specific
product or product line (e.g. "iPhone") or a general category of products
or services (e.g. "smartphones").




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
