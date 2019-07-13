use utf8;

package SemanticWeb::Schema::Patient;

# ABSTRACT: A patient is any person recipient of health care services.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalAudience SemanticWeb::Schema::Person /;


use MooX::JSON_LD 'Patient';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A patient is any person recipient of health care services.




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


=head2 C<drug>



Specifying a drug or medicine used in a medication procedure


A drug should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Drug']>

=back

=cut

has drug => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'drug',
);


=head2 C<health_condition>

C<healthCondition>

Specifying the health condition(s) of a patient, medical study, or other
target audience.


A health_condition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCondition']>

=back

=cut

has health_condition => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthCondition',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Person>

=cut

1;
