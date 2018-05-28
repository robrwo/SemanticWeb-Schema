package SemanticWeb::Schema::EducationalOrganization;

# ABSTRACT: An educational organization.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An educational organization.




=head1 ATTRIBUTES


=head2 C<alumni>



Alumni of an organization.


A alumni should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has alumni => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'alumni',
    json_ld_serializer => \&_serialize_alumni,
);

sub _serialize_alumni { $_[0]->_serializer('alumni') }




around json_ld_type => sub { return 'EducationalOrganization' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'alumni' => \&_serialize_alumni,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
