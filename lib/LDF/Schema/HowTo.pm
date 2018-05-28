package LDF::Schema::HowTo;

# ABSTRACT: Instructions that explain how to achieve a result by performing a sequence of steps.

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Instructions that explain how to achieve a result by performing a sequence
of steps.




=head1 ATTRIBUTES


=head2 C<estimated_cost>

C<estimatedCost>

The estimated cost of the supply or supplies consumed when performing
instructions.


A estimated_cost should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::MonetaryAmount']>

=back

=cut

has estimated_cost => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<perform_time>

C<performTime>

=begin html

The length of time it takes to perform instructions or a direction (not
including time to prepare the supplies), in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 duration format</a>.

=end html


A perform_time should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has perform_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<prep_time>

C<prepTime>

=begin html

The length of time it takes to prepare the items to be used in instructions
or a direction, in <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601
duration format</a>.

=end html


A prep_time should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has prep_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<steps>



The steps in the form of a single item (text, document, video, etc.) or an
ordered list with HowToStep and/or HowToSection items.


A steps should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=item C<Str>

=item C<InstanceOf['LDF::Schema::ItemList']>

=back

=cut

has steps => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<supply>



A sub-property of instrument. A supply consumed when performing
instructions or a direction.


A supply should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::HowToSupply']>

=back

=cut

has supply => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<tool>



A sub property of instrument. An object used (but not consumed) when
performing instructions or a direction.


A tool should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::HowToTool']>

=item C<Str>

=back

=cut

has tool => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<total_time>

C<totalTime>

=begin html

The total time required to perform instructions or a direction (including
time to prepare the supplies), in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 duration format</a>.

=end html


A total_time should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has total_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<yield>



The quantity that results by performing instructions. For example, a paper
airplane, 10 personalized candles.


A yield should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=item C<Str>

=back

=cut

has yield => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HowTo' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'estimatedCost' => $self->curry::_serializer('estimated_cost'),
       'performTime' => $self->curry::_serializer('perform_time'),
       'prepTime' => $self->curry::_serializer('prep_time'),
       'steps' => $self->curry::_serializer('steps'),
       'supply' => $self->curry::_serializer('supply'),
       'tool' => $self->curry::_serializer('tool'),
       'totalTime' => $self->curry::_serializer('total_time'),
       'yield' => $self->curry::_serializer('yield'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
