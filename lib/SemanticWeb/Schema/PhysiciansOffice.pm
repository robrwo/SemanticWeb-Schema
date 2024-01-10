use utf8;

package SemanticWeb::Schema::PhysiciansOffice;

# ABSTRACT: A doctor's office or clinic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Physician /;


use MooX::JSON_LD 'PhysiciansOffice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A doctor's office or clinic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Physician>

=cut

1;
