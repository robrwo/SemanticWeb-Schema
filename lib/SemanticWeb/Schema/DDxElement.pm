use utf8;

package SemanticWeb::Schema::DDxElement;

# ABSTRACT: An alternative

use Moo;

extends qw/ SemanticWeb::Schema::MedicalIntangible /;


use MooX::JSON_LD 'DDxElement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

An alternative, closely-related condition typically considered later in the
differential diagnosis process along with the signs that are used to
distinguish it.




=head1 ATTRIBUTES


=head2 C<diagnosis>



One or more alternative conditions considered in the differential diagnosis
process as output of a diagnosis process.


A diagnosis should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCondition']>

=back

=cut

has diagnosis => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'diagnosis',
);


=head2 C<distinguishing_sign>

C<distinguishingSign>

One of a set of signs and symptoms that can be used to distinguish this
diagnosis from others in the differential diagnosis.


A distinguishing_sign should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalSignOrSymptom']>

=back

=cut

has distinguishing_sign => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'distinguishingSign',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIntangible>

=cut

1;
