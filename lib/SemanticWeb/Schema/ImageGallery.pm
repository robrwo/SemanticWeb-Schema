package SemanticWeb::Schema::ImageGallery;

# ABSTRACT: Web page type: Image gallery page.

use Moo;

extends qw/ SemanticWeb::Schema::CollectionPage /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Web page type: Image gallery page.




=cut


around json_ld_type => sub { return 'ImageGallery' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CollectionPage>

=cut

1;
