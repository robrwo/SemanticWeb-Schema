package SemanticWeb::Schema::MusicAlbumProductionType;

# ABSTRACT: Classification of the album by it's type of content: soundtrack

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Classification of the album by it's type of content: soundtrack, live
album, studio album, etc.




=cut


around json_ld_type => sub { return 'MusicAlbumProductionType' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
