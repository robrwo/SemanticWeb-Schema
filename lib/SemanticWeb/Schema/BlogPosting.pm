package SemanticWeb::Schema::BlogPosting;

# ABSTRACT: A blog post.

use Moo;

extends qw/ SemanticWeb::Schema::SocialMediaPosting /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A blog post.




=cut


around json_ld_type => sub { return 'BlogPosting' };

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
