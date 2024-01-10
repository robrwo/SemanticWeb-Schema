use utf8;

package SemanticWeb::Schema::competencyRequired;

# ABSTRACT: Knowledge

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'competencyRequired';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Knowledge, skill, ability or personal attribute that must be demonstrated
by a person or other entity in order to do something such as earn an
Educational Occupational Credential or understand a LearningResource.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
