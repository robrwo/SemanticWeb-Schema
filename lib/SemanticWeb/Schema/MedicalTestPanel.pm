use utf8;

package SemanticWeb::Schema::MedicalTestPanel;

# ABSTRACT: Any collection of tests commonly ordered together.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalTest /;


use MooX::JSON_LD 'MedicalTestPanel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

Any collection of tests commonly ordered together.




=head1 ATTRIBUTES


=head2 C<sub_test>

C<subTest>

A component test of the panel.


A sub_test should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalTest']>

=back

=head2 C<_has_sub_test>

A predicate for the L</sub_test> attribute.

=cut

has sub_test => (
    is        => 'rw',
    predicate => '_has_sub_test',
    json_ld   => 'subTest',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTest>

=cut

1;
