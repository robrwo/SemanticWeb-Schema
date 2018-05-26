package LDF::Schema::SocialMediaPosting;

# ABSTRACT: A post to a social media platform

use Moo;

extends qw/ LDF::Schema::Article /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A post to a social media platform, including blog posts, tweets, Facebook
posts, etc.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<shared_content>

C<sharedContent>

A CreativeWork such as an image, video, or audio clip shared as part of
this posting.


A shared_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=back

=cut

has shared_content => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'SocialMediaPosting' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { sharedContent => 'shared_content' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Article>

=cut

1;
