package SemanticWeb::Schema::DataCatalog;

# ABSTRACT: A collection of datasets.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A collection of datasets.




=head1 ATTRIBUTES


=head2 C<dataset>



A dataset contained in this catalog.


A dataset should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Dataset']>

=back

=cut

has dataset => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dataset',
    json_ld_serializer => \&_serialize_dataset,
);

sub _serialize_dataset { $_[0]->_serializer('dataset') }




around json_ld_type => sub { return 'DataCatalog' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'dataset' => \&_serialize_dataset,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
