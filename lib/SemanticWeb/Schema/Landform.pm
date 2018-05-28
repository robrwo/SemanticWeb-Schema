package SemanticWeb::Schema::Landform;

# ABSTRACT: A landform or physical feature

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A landform or physical feature. Landform elements include mountains,
plains, lakes, rivers, seascape and oceanic waterbody interface features
such as bays, peninsulas, seas and so forth, including sub-aqueous terrain
features such as submersed mountain ranges, volcanoes, and the great ocean
basins.




=cut


around json_ld_type => sub { return 'Landform' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
