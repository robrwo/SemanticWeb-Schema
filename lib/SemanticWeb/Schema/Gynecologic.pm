use utf8;

package SemanticWeb::Schema::Gynecologic;

# ABSTRACT: A specific branch of medical science that pertains to the health care of women

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Gynecologic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that pertains to the health care of
women, particularly in the diagnosis and treatment of disorders affecting
the female reproductive system.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
