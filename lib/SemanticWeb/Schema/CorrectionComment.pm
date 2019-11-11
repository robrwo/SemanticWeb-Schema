use utf8;

package SemanticWeb::Schema::CorrectionComment;

# ABSTRACT: A comment that corrects CreativeWork .

use Moo;

extends qw/ SemanticWeb::Schema::Comment /;


use MooX::JSON_LD 'CorrectionComment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A <a class="localLink" href="http://schema.org/comment">comment</a> that
corrects <a class="localLink"
href="http://schema.org/CreativeWork">CreativeWork</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Comment>

=cut

1;
