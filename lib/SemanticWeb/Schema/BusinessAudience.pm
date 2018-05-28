package SemanticWeb::Schema::BusinessAudience;

# ABSTRACT: A set of characteristics belonging to businesses

use Moo;

extends qw/ SemanticWeb::Schema::Audience /;


use MooX::JSON_LD 'BusinessAudience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has number_of_employees => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfEmployees',
    json_ld_serializer => \&_serialize_number_of_employees,
);

sub _serialize_number_of_employees { $_[0]->_serializer('number_of_employees') }


=head2 C<yearly_revenue>

C<yearlyRevenue>

The size of the business in annual revenue.


A yearly_revenue should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has yearly_revenue => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'yearlyRevenue',
    json_ld_serializer => \&_serialize_yearly_revenue,
);

sub _serialize_yearly_revenue { $_[0]->_serializer('yearly_revenue') }


=head2 C<years_in_operation>

C<yearsInOperation>

The age of the business.


A years_in_operation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has years_in_operation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'yearsInOperation',
    json_ld_serializer => \&_serialize_years_in_operation,
);

sub _serialize_years_in_operation { $_[0]->_serializer('years_in_operation') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Audience>

=cut

1;
