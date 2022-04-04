use utf8;

package SemanticWeb::Schema::DrugClass;

# ABSTRACT: A class of medical drugs, e

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'DrugClass';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

A class of medical drugs, e.g., statins. Classes can represent general
pharmacological class, common mechanisms of action, common physiological
effects, etc.




=head1 ATTRIBUTES


=head2 C<drug>



Specifying a drug or medicine used in a medication procedure.


A drug should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Drug']>

=back

=head2 C<_has_drug>

A predicate for the L</drug> attribute.

=cut

has drug => (
    is        => 'rw',
    predicate => '_has_drug',
    json_ld   => 'drug',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
