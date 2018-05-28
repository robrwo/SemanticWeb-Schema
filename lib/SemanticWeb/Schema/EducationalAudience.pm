package SemanticWeb::Schema::EducationalAudience;

# ABSTRACT: An EducationalAudience.

use Moo;

extends qw/ SemanticWeb::Schema::Audience /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An EducationalAudience.




=head1 ATTRIBUTES


=head2 C<educational_role>

C<educationalRole>

An educationalRole of an EducationalAudience.


A educational_role should be one of the following types:

=over

=item C<Str>

=back

=cut

has educational_role => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'educationalRole',
    json_ld_serializer => \&_serialize_educational_role,
);

sub _serialize_educational_role { $_[0]->_serializer('educational_role') }




around json_ld_type => sub { return 'EducationalAudience' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'educationalRole' => \&_serialize_educational_role,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Audience>

=cut

1;
