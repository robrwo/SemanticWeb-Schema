use utf8;

package SemanticWeb::Schema::productReturnLink;

# ABSTRACT: Indicates a Web page or service by URL

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'productReturnLink';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a Web page or service by URL, for product return.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
