package LDF::Schema::BusinessAudience;

# ABSTRACT: A set of characteristics belonging to businesses

use Moo;

extends qw/ LDF::Schema::Audience /;


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

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has number_of_employees => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<yearly_revenue>

C<yearlyRevenue>

The size of the business in annual revenue.


A yearly_revenue should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has yearly_revenue => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<years_in_operation>

C<yearsInOperation>

The age of the business.


A years_in_operation should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has years_in_operation => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BusinessAudience' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { numberOfEmployees => 'number_of_employees' },
      { yearlyRevenue => 'yearly_revenue' },
      { yearsInOperation => 'years_in_operation' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Audience>

=cut

1;
