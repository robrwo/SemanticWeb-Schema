use utf8;

package SemanticWeb::Schema::guidelineSubject;

# ABSTRACT: The medical conditions, treatments, etc

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'guidelineSubject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The medical conditions, treatments, etc. that are the subject of the
guideline.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
