use utf8;

package SemanticWeb::Schema::addressCountry;

# ABSTRACT: The country

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'addressCountry';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The country. For example, USA. You can also provide the two-letter [ISO
3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
