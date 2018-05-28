package SemanticWeb::Schema::HowToSection;

# ABSTRACT: A sub-grouping of steps in the instructions for how to achieve a result (e

use Moo;

extends qw/ SemanticWeb::Schema::ItemList /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A sub-grouping of steps in the instructions for how to achieve a result
(e.g. steps for making a pie crust within a pie recipe).




=head1 ATTRIBUTES


=head2 C<steps>



The steps in the form of a single item (text, document, video, etc.) or an
ordered list with HowToStep and/or HowToSection items.


A steps should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=back

=cut

has steps => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'steps',
    json_ld_serializer => \&_serialize_steps,
);

sub _serialize_steps { $_[0]->_serializer('steps') }




around json_ld_type => sub { return 'HowToSection' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'steps' => \&_serialize_steps,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ItemList>

=cut

1;
