use utf8;

package SemanticWeb::Schema::Project;

# ABSTRACT: An enterprise (potentially individual but typically collaborative)

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'Project';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An enterprise (potentially individual but typically collaborative),
planned to achieve a particular aim. Use properties from <a
class="localLink" href="http://schema.org/Organization">Organization</a>,
<a class="localLink"
href="http://schema.org/subOrganization">subOrganization</a>/<a
class="localLink"
href="http://schema.org/parentOrganization">parentOrganization</a> to
indicate project sub-structures.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
