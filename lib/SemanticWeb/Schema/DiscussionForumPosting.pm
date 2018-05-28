package SemanticWeb::Schema::DiscussionForumPosting;

# ABSTRACT: A posting to a discussion forum.

use Moo;

extends qw/ SemanticWeb::Schema::SocialMediaPosting /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A posting to a discussion forum.




=cut


around json_ld_type => sub { return 'DiscussionForumPosting' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::SocialMediaPosting>

=cut

1;
