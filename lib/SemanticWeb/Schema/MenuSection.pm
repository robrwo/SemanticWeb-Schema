package SemanticWeb::Schema::MenuSection;

# ABSTRACT: A sub-grouping of food or drink items in a menu

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A sub-grouping of food or drink items in a menu. E.g. courses (such as
'Dinner', 'Breakfast', etc.), specific type of dishes (such as 'Meat',
'Vegan', 'Drinks', etc.), or some other classification made by the menu
provider.




=head1 ATTRIBUTES


=head2 C<has_menu_item>

C<hasMenuItem>

A food or drink item contained in a menu or menu section.


A has_menu_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MenuItem']>

=back

=cut

has has_menu_item => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasMenuItem',
    json_ld_serializer => \&_serialize_has_menu_item,
);

sub _serialize_has_menu_item { $_[0]->_serializer('has_menu_item') }


=head2 C<has_menu_section>

C<hasMenuSection>

A subgrouping of the menu (by dishes, course, serving time period, etc.).


A has_menu_section should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MenuSection']>

=back

=cut

has has_menu_section => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasMenuSection',
    json_ld_serializer => \&_serialize_has_menu_section,
);

sub _serialize_has_menu_section { $_[0]->_serializer('has_menu_section') }




around json_ld_type => sub { return 'MenuSection' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'hasMenuItem' => \&_serialize_has_menu_item,
       'hasMenuSection' => \&_serialize_has_menu_section,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
