use utf8;

package SemanticWeb::Schema::UserInteraction;

# ABSTRACT: UserInteraction and its subtypes is an old way of talking about users interacting with pages

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'UserInteraction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

UserInteraction and its subtypes is an old way of talking about users
interacting with pages. It is generally better to use <a class="localLink"
href="http://schema.org/Action">Action</a>-based vocabulary, alongside
types such as <a class="localLink"
href="http://schema.org/Comment">Comment</a>.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
