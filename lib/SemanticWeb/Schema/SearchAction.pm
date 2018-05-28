package SemanticWeb::Schema::SearchAction;

# ABSTRACT: <p>The act of searching for an object

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of searching for an object.</p> <p>Related actions:</p> <ul>
<li><a class="localLink"
href="http://schema.org/FindAction">FindAction</a>: SearchAction generally
leads to a FindAction, but not necessarily.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<query>



A sub property of instrument. The query used on this action.


A query should be one of the following types:

=over

=item C<Str>

=back

=cut

has query => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'query',
    json_ld_serializer => \&_serialize_query,
);

sub _serialize_query { $_[0]->_serializer('query') }




around json_ld_type => sub { return 'SearchAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'query' => \&_serialize_query,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
