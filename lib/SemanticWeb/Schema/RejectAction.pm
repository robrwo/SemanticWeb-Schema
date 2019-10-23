use utf8;

package SemanticWeb::Schema::RejectAction;

# ABSTRACT: The act of rejecting to/adopting an object

use Moo;

extends qw/ SemanticWeb::Schema::AllocateAction /;


use MooX::JSON_LD 'RejectAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

The act of rejecting to/adopting an object.<br/><br/> Related
actions:<br/><br/> <ul> <li><a class="localLink"
href="http://schema.org/AcceptAction">AcceptAction</a>: The antonym of
RejectAction.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AllocateAction>

=cut

1;
