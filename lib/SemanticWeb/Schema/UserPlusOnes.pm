use utf8;

package SemanticWeb::Schema::UserPlusOnes;

# ABSTRACT: UserInteraction and its subtypes is an old way of talking about users interacting with pages

use Moo;

extends qw/ SemanticWeb::Schema::UserInteraction /;


use MooX::JSON_LD 'UserPlusOnes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>UserInteraction and its subtypes is an old way of talking about users
interacting with pages. It is generally better to use <a class="localLink"
href="http://schema.org/Action">Action</a>-based vocabulary, alongside
types such as <a class="localLink"
href="http://schema.org/Comment">Comment</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::UserInteraction>

=cut

1;
