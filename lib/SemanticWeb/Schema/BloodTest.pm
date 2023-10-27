use utf8;

package SemanticWeb::Schema::BloodTest;

# ABSTRACT: A medical test performed on a sample of a patient's blood.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalTest /;


use MooX::JSON_LD 'BloodTest';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A medical test performed on a sample of a patient's blood.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTest>

=cut

1;
