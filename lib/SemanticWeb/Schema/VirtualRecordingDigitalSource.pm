use utf8;

package SemanticWeb::Schema::VirtualRecordingDigitalSource;

# ABSTRACT: Content coded as ' virtual recording ' using the IPTC digital source type vocabulary.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'VirtualRecordingDigitalSource';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>Content coded as '<a
href="https://cv.iptc.org/newscodes/digitalsourcetype/virtualRecording">vir
tual recording</a>' using the IPTC <a
href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital source
type</a> vocabulary.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
