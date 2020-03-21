use utf8;

package SemanticWeb::Schema::Country;

# ABSTRACT: A country.

use Moo;

extends qw/ SemanticWeb::Schema::AdministrativeArea /;


use MooX::JSON_LD 'Country';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

A country.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AdministrativeArea>

=cut

1;
