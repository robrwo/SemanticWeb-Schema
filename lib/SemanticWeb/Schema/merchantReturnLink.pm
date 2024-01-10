use utf8;

package SemanticWeb::Schema::merchantReturnLink;

# ABSTRACT: Specifies a Web page or service by URL

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'merchantReturnLink';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies a Web page or service by URL, for product returns.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
