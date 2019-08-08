use utf8;

package SemanticWeb::Schema::MedicalRiskFactor;

# ABSTRACT: A risk factor is anything that increases a person's likelihood of developing or contracting a disease

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalRiskFactor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

A risk factor is anything that increases a person's likelihood of
developing or contracting a disease, medical condition, or complication.




=head1 ATTRIBUTES


=head2 C<increases_risk_of>

C<increasesRiskOf>

The condition, complication, etc. influenced by this factor.


A increases_risk_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=back

=cut

has increases_risk_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'increasesRiskOf',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
