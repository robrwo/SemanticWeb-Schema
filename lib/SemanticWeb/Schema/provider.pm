use utf8;

package SemanticWeb::Schema::provider;

# ABSTRACT: The service provider

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'provider';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
