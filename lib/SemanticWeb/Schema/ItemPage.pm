package SemanticWeb::Schema::ItemPage;

# ABSTRACT: A page devoted to a single item

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A page devoted to a single item, such as a particular product or hotel.




=cut


around json_ld_type => sub { return 'ItemPage' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
