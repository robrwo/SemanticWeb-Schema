package SemanticWeb::Schema::BookmarkAction;

# ABSTRACT: An agent bookmarks/flags/labels/tags/marks an object.

use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An agent bookmarks/flags/labels/tags/marks an object.




=cut


around json_ld_type => sub { return 'BookmarkAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
