use utf8;

package SemanticWeb::Schema::returnPolicyCountry;

# ABSTRACT: The country where the product has to be sent to for returns

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'returnPolicyCountry';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The country where the product has to be sent to for returns, for example "Ireland" using the [[name]] property of L<SemanticWeb::Schema::Country>. You can also provide the two-letter L<ISO 3166-1 alpha-2 country code|http://en.wikipedia.org/wiki/ISO_3166-1>. Note that this can be different from the country where the product was originally shipped from or sent to.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
