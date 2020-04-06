use utf8;

package SemanticWeb::Schema::Attorney;

# ABSTRACT: Professional service: Attorney

use Moo;

extends qw/ SemanticWeb::Schema::LegalService /;


use MooX::JSON_LD 'Attorney';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>Professional service: Attorney. <br/><br/> This type is deprecated - <a
class="localLink" href="http://schema.org/LegalService">LegalService</a> is
more inclusive and less ambiguous.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LegalService>

=cut

1;
