package SemanticWeb::Schema::PropertyValueSpecification;

# ABSTRACT: A Property value specification.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A Property value specification.




=head1 ATTRIBUTES


=head2 C<default_value>

C<defaultValue>

The default value of the input. For properties that expect a literal, the
default is a literal value, for properties that expect an object, it's an
ID reference to one of the current values.


A default_value should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has default_value => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<max_value>

C<maxValue>

The upper value of some characteristic or property.


A max_value should be one of the following types:

=over

=item C<Num>

=back

=cut

has max_value => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<min_value>

C<minValue>

The lower value of some characteristic or property.


A min_value should be one of the following types:

=over

=item C<Num>

=back

=cut

has min_value => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<multiple_values>

C<multipleValues>

Whether multiple values are allowed for the property. Default is false.


A multiple_values should be one of the following types:

=over

=item C<Bool>

=back

=cut

has multiple_values => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<readonly_value>

C<readonlyValue>

Whether or not a property is mutable. Default is false. Specifying this for
a property that also has a value makes it act similar to a "hidden" input
in an HTML form.


A readonly_value should be one of the following types:

=over

=item C<Bool>

=back

=cut

has readonly_value => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<step_value>

C<stepValue>

The stepValue attribute indicates the granularity that is expected (and
required) of the value in a PropertyValueSpecification.


A step_value should be one of the following types:

=over

=item C<Num>

=back

=cut

has step_value => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<value_max_length>

C<valueMaxLength>

Specifies the allowed range for number of characters in a literal value.


A value_max_length should be one of the following types:

=over

=item C<Num>

=back

=cut

has value_max_length => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<value_min_length>

C<valueMinLength>

Specifies the minimum allowed range for number of characters in a literal
value.


A value_min_length should be one of the following types:

=over

=item C<Num>

=back

=cut

has value_min_length => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<value_name>

C<valueName>

Indicates the name of the PropertyValueSpecification to be used in URL
templates and form encoding in a manner analogous to HTML's input@name.


A value_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has value_name => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<value_pattern>

C<valuePattern>

Specifies a regular expression for testing literal values according to the
HTML spec.


A value_pattern should be one of the following types:

=over

=item C<Str>

=back

=cut

has value_pattern => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<value_required>

C<valueRequired>

Whether the property must be filled in to complete the action. Default is
false.


A value_required should be one of the following types:

=over

=item C<Bool>

=back

=cut

has value_required => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PropertyValueSpecification' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'defaultValue' => $self->curry::_serializer('default_value'),
       'maxValue' => $self->curry::_serializer('max_value'),
       'minValue' => $self->curry::_serializer('min_value'),
       'multipleValues' => $self->curry::_serializer('multiple_values'),
       'readonlyValue' => $self->curry::_serializer('readonly_value'),
       'stepValue' => $self->curry::_serializer('step_value'),
       'valueMaxLength' => $self->curry::_serializer('value_max_length'),
       'valueMinLength' => $self->curry::_serializer('value_min_length'),
       'valueName' => $self->curry::_serializer('value_name'),
       'valuePattern' => $self->curry::_serializer('value_pattern'),
       'valueRequired' => $self->curry::_serializer('value_required'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
