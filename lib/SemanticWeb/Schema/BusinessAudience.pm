use utf8;

package SemanticWeb::Schema::BusinessAudience;

# ABSTRACT: A set of characteristics belonging to businesses

use Moo;

extends qw/ SemanticWeb::Schema::Audience /;


use MooX::JSON_LD 'BusinessAudience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

A set of characteristics belonging to businesses, e.g. who compose an
item's target audience.




=head1 ATTRIBUTES


=head2 C<number_of_employees>

C<numberOfEmployees>

The number of employees in an organization e.g. business.


A number_of_employees should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_number_of_employees>

A predicate for the L</number_of_employees> attribute.

=cut

has number_of_employees => (
    is        => 'rw',
    predicate => '_has_number_of_employees',
    json_ld   => 'numberOfEmployees',
);


=head2 C<yearly_revenue>

C<yearlyRevenue>

The size of the business in annual revenue.


A yearly_revenue should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_yearly_revenue>

A predicate for the L</yearly_revenue> attribute.

=cut

has yearly_revenue => (
    is        => 'rw',
    predicate => '_has_yearly_revenue',
    json_ld   => 'yearlyRevenue',
);


=head2 C<years_in_operation>

C<yearsInOperation>

The age of the business.


A years_in_operation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_years_in_operation>

A predicate for the L</years_in_operation> attribute.

=cut

has years_in_operation => (
    is        => 'rw',
    predicate => '_has_years_in_operation',
    json_ld   => 'yearsInOperation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Audience>

=cut

1;
