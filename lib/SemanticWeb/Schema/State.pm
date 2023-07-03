use utf8;

package SemanticWeb::Schema::State;

# ABSTRACT: A state or province of a country.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::AdministrativeArea /;


use MooX::JSON_LD 'State';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A state or province of a country.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AdministrativeArea>

=cut

1;
