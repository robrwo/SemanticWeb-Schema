use utf8;

package SemanticWeb::Schema::MediaSubscription;

# ABSTRACT: A subscription which allows a user to access media including audio

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'MediaSubscription';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

A subscription which allows a user to access media including audio, video,
books, etc.




=head1 ATTRIBUTES


=head2 C<authenticator>



The Organization responsible for authenticating the user's subscription.
For example, many media apps require a cable/satellite provider to
authenticate your subscription before playing media.


A authenticator should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has authenticator => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'authenticator',
);


=head2 C<expects_acceptance_of>

C<expectsAcceptanceOf>

An Offer which must be accepted before the user can perform the Action. For
example, the user may need to buy a movie before being able to watch it.


A expects_acceptance_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has expects_acceptance_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'expectsAcceptanceOf',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
