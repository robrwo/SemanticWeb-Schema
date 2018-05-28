package SemanticWeb::Schema::BookSeries;

# ABSTRACT: A series of books

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeries /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A series of books. Included books can be indicated with the hasPart
property.




=cut


around json_ld_type => sub { return 'BookSeries' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeries>

=cut

1;
