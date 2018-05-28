package SemanticWeb::Schema::WebApplication;

# ABSTRACT: Web applications.

use Moo;

extends qw/ SemanticWeb::Schema::SoftwareApplication /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Web applications.




=head1 ATTRIBUTES


=head2 C<browser_requirements>

C<browserRequirements>

Specifies browser requirements in human-readable text. For example,
'requires HTML5 support'.


A browser_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has browser_requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'browserRequirements',
    json_ld_serializer => \&_serialize_browser_requirements,
);

sub _serialize_browser_requirements { $_[0]->_serializer('browser_requirements') }




around json_ld_type => sub { return 'WebApplication' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'browserRequirements' => \&_serialize_browser_requirements,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::SoftwareApplication>

=cut

1;
