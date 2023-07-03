use utf8;

package SemanticWeb::Schema::City;

# ABSTRACT: A city or town.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::AdministrativeArea /;


use MooX::JSON_LD 'City';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A city or town.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AdministrativeArea>

=cut

1;
