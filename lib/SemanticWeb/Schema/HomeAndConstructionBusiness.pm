use utf8;

package SemanticWeb::Schema::HomeAndConstructionBusiness;

# ABSTRACT: A construction business

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'HomeAndConstructionBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

A construction business.<br/><br/> A HomeAndConstructionBusiness is a <a
class="localLink" href="http://schema.org/LocalBusiness">LocalBusiness</a>
that provides services around homes and buildings.<br/><br/> As a <a
class="localLink" href="http://schema.org/LocalBusiness">LocalBusiness</a>
it can be described as a <a class="localLink"
href="http://schema.org/provider">provider</a> of one or more <a
class="localLink" href="http://schema.org/Service">Service</a>(s).

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
