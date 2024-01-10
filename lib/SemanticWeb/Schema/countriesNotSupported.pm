use utf8;

package SemanticWeb::Schema::countriesNotSupported;

# ABSTRACT: Countries for which the application is not supported

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'countriesNotSupported';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Countries for which the application is not supported. You can also provide
the two-letter ISO 3166-1 alpha-2 country code.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
