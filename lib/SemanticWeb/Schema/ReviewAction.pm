package SemanticWeb::Schema::ReviewAction;

# ABSTRACT: The act of producing a balanced opinion about the object for an audience

use Moo;

extends qw/ SemanticWeb::Schema::AssessAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of producing a balanced opinion about the object for an audience.
An agent reviews an object with participants resulting in a review.




=head1 ATTRIBUTES


=head2 C<result_review>

C<resultReview>

A sub property of result. The review that resulted in the performing of the
action.


A result_review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=cut

has result_review => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'resultReview',
    json_ld_serializer => \&_serialize_result_review,
);

sub _serialize_result_review { $_[0]->_serializer('result_review') }




around json_ld_type => sub { return 'ReviewAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'resultReview' => \&_serialize_result_review,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::AssessAction>

=cut

1;
