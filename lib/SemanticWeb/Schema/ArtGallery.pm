package SemanticWeb::Schema::ArtGallery;

# ABSTRACT: An art gallery.

use Moo;

extends qw/ SemanticWeb::Schema::EntertainmentBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An art gallery.




=cut


around json_ld_type => sub { return 'ArtGallery' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::EntertainmentBusiness>

=cut

1;
